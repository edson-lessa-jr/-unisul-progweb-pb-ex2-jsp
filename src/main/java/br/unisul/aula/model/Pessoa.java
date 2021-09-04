package br.unisul.aula.model;

import java.util.ArrayList;
import java.util.List;

public class Pessoa {
    private String nome;
    private int idade;
    public static List<Pessoa> pessoaList = new ArrayList<>();

    public Pessoa() {
    }

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    @Override
    public String toString() {
        return "Pessoa: " +
                "nome=" + nome +
                ", idade=" + idade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public void setIdade(String nrIdade) {
        this.idade=Integer.parseInt(nrIdade);
    }
}
