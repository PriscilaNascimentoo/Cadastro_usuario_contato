
package contato;

//Set e Get
public class Dados {
    private String nome;
    private String email;
    private String telefone;
    
    //Declaração
    public Dados(String nome, String email, String telefone) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
    }

    public String getnome() {
        return nome;
    }

    public void setnome(String nome) {
        this.nome = nome;
    }

    public String getemail() {
        return email;
    }

    public void setBanda(String email) {
        this.email = email;
    }

    public String gettelefone() {
        return telefone;
    }

    public void settelefone(String telefone) {
        this.telefone = telefone;
    }
}
