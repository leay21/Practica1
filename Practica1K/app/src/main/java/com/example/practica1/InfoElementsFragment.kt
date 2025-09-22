package com.example.practica1

import android.os.Bundle
import android.os.Handler
import android.os.Looper
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import com.example.practica1.databinding.FragmentInfoElementsBinding

class InfoElementsFragment : Fragment() {

    private var _binding: FragmentInfoElementsBinding? = null
    private val binding get() = _binding!!

    private var handler = Handler(Looper.getMainLooper())
    private lateinit var progressRunnable: Runnable

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentInfoElementsBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        // Recibir datos del TextFieldsFragment
        arguments?.getString("inputText")?.let {
            if (it.isNotEmpty()) {
                binding.tvInfo.text = "Texto recibido: $it"
            }
        }

        // Lógica para la barra de progreso
        binding.btnStartProgress.setOnClickListener {
            startProgressBarAnimation()
        }

        binding.btnResetProgress.setOnClickListener {
            resetProgressBar()
        }

        // Lógica para el RatingBar
        binding.ratingBar.setOnRatingBarChangeListener { _, rating, _ ->
            Toast.makeText(context, "Calificación: $rating estrellas", Toast.LENGTH_SHORT).show()
        }
    }

    private fun startProgressBarAnimation() {
        binding.btnStartProgress.isEnabled = false
        binding.progressBarSample.progress = 0

        progressRunnable = object : Runnable {
            override fun run() {
                val currentProgress = binding.progressBarSample.progress
                if (currentProgress < 100) {
                    binding.progressBarSample.progress = currentProgress + 1
                    handler.postDelayed(this, 20) // Aumenta cada 20ms
                } else {
                    binding.btnStartProgress.isEnabled = true
                    Toast.makeText(context, "¡Completado!", Toast.LENGTH_SHORT).show()
                }
            }
        }
        handler.post(progressRunnable)
    }

    private fun resetProgressBar() {
        // Detiene la animación si está en curso (comprobando si fue inicializada)
        if (::progressRunnable.isInitialized) {
            handler.removeCallbacks(progressRunnable)
        }
        binding.progressBarSample.progress = 0
        binding.btnStartProgress.isEnabled = true
    }

    override fun onDestroyView() {
        super.onDestroyView()
        // Limpia el handler para evitar fugas de memoria
        if (::progressRunnable.isInitialized) {
            handler.removeCallbacks(progressRunnable)
        }
        _binding = null
    }
}