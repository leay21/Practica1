package com.example.practica1

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.Toast
import com.example.practica1.databinding.FragmentButtonsBinding

class ButtonsFragment : Fragment() {

    private var _binding: FragmentButtonsBinding? = null
    private val binding get() = _binding!!
    private var clickCount = 0 // Variable para el contador

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentButtonsBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        // Lógica del botón original
        binding.buttonSample.setOnClickListener {
            binding.tvButtonResult.text = "Botón estándar presionado."
        }

        // Lógica del ImageButton (ahora muestra un Toast)
        binding.imageButtonSample.setOnClickListener {
            Toast.makeText(context, "¡Te gusta esta estrella!", Toast.LENGTH_SHORT).show()
        }

        // Lógica del botón contador
        binding.btnCounter.setOnClickListener {
            clickCount++
            binding.btnCounter.text = "Púlsame ($clickCount)"
        }

        // Lógica del botón de desactivación
        binding.btnDisable.setOnClickListener {
            it.isEnabled = false // 'it' se refiere al botón que fue presionado
            (it as Button).text = "Desactivado"
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}