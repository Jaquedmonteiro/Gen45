package orientacaoaobj;

public class ContaBancaria {
	
	String nome, cpf, agencia, conta, digito;
	float saldo;

	public void digitarNome()
	{
		System.out.println("Nome completo: "+this.nome);
	}
		
	public void digitarCPF()
	{
		System.out.println("CPF: "+this.cpf);
	}
	
	public void digitarAgencia()
	{
		System.out.println("Agencia: "+this.agencia);
	}
	
	public void digitarConta()
	{
		System.out.println("Conta: "+this.conta);
	}
	
	public void digitarDigito()
	{
		System.out.println("Dígito: "+this.digito);
	}
	
	public void digitarSaldo()
	{
		System.out.println("Saldo: R$"+this.saldo);
	}

	}
