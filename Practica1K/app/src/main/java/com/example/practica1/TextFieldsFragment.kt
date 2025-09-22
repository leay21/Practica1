package com.example.practica1

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.os.bundleOf
import androidx.navigation.fragment.findNavController
import com.example.practica1.databinding.FragmentTextFieldsBinding

class TextFieldsFragment : Fragment() {

    private var _binding: FragmentTextFieldsBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentTextFieldsBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnShowText.setOnClickListener {
            val inputText = binding.editTextSample.text.toString()
            binding.tvResult.text = "Texto ingresado: $inputText"

            // Conexión entre Fragments: Enviar datos al InfoElementsFragment
            val bundle = bundleOf("inputText" to inputText)
            findNavController().navigate(R.id.infoElementsFragment, bundle)
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}