class Admin{

 final  int id_administrador;
 final String nombre_administrador;
 final String apellido_paterno;
 final String apellido_materno;
 final String celular;
 final bool celular_verificado;
 final String codigo_activacion_celular;
 final String email;
 final bool email_verificado;
 final String codigo_activacion_email;
 final String usuario;
 final String password;
 final DateTime fecha_registro;
 final bool acepta_terminos;
 final bool activo;
 final String razon_social;
 final String nombre_comercial;
 final int id_fiscal;
 final String id_rol;
 final String id_pais;
 final String token;

 Admin(this.id_administrador, this.nombre_administrador, this.apellido_paterno,
     this.apellido_materno, this.celular, this.celular_verificado,
     this.codigo_activacion_celular, this.email, this.email_verificado,
     this.codigo_activacion_email, this.usuario, this.password,
     this.fecha_registro, this.acepta_terminos, this.activo, this.razon_social,
     this.nombre_comercial, this.id_fiscal, this.id_rol, this.id_pais,
     this.token);


}