package com.example.practica1

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.RadioButton
import com.example.practica1.databinding.FragmentSelectionBinding

class SelectionFragment : Fragment() {

    private var _binding: FragmentSelectionBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentSelectionBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.checkboxSample.setOnCheckedChangeListener { _, isChecked ->
            updateResultText("Checkbox: ${if (isChecked) "Aceptado" else "No aceptado"}")
        }

        binding.radioGroupSample.setOnCheckedChangeListener { _, checkedId ->
            val selectedRadioButton = view.findViewById<RadioButton>(checkedId)
            updateResultText("Radio: ${selectedRadioButton.text}")
        }

        binding.switchSample.setOnCheckedChangeListener { _, isChecked ->
            updateResultText("Switch: ${if (isChecked) "Activado" else "Desactivado"}")
        }
    }

    private fun updateResultText(text: String) {
        binding.tvSelectionResult.text = text
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}