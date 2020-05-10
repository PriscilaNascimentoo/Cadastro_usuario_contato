package contato;

import java.util.ArrayList;


public class Db {
    //Array List
    private static ArrayList<Dados> dados;
    public static ArrayList<Dados> getDados(){
            if(dados == null){
                dados = new ArrayList<>();
                dados.add(new Dados("Priscila do Nascimento", "priscila@gmail.com", "(13)354789541"));
                dados.add(new Dados("Rogério de Lira", "rogerio@gmail.com", "(13)98745684"));
            }
            return dados;
    }
    //metodo para inserir contato
    public static void  addDados(Dados dado){
        dados.add(dado);
    }
    //metodo para alterar contato
    public static void updateDados(int index, Dados dado){
        dados.set(index, dado);
    }
    //metodo para remover contato
    public static void remove(int index){
        dados.remove(index);
        
    } 
}
