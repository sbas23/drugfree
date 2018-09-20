Fundation.create(
	fundation_name:'default',
	address: '123',
	phone: 3124327738, 
	mail:'juan@aldeamo.com'
	)

State.create([
	{
		description:'Activo'
	},{
		description:'Inactivo'
	}
])

Role.create([
	{
		role_name:'Administrador', 
		description:'Desarrollador'
	},{
		role_name:'Profesional', 
		description:'Profesional, aliado'
	},{
		role_name:'Usuario', 
		description:'Usuario que consulta la WEB'
	}
])

User.create([
	{                   
		email:'sbas23@gmail.com',                  
		password: '123456',
    	password_confirmation: '123456',    
		name:'Juan',                   
		lastname:'Calderon',              
		document:1018433548,            
		phone:3124327738,                 
		profession:'Desarrollador',            
		role_id:1,               
		state_id:1,               
		fundation_id:1
	},{
		email:'jose@gmail.com',                  
		password: '123456',
    	password_confirmation: '123456',        
		name:'Jose',                   
		lastname:'Ramos',              
		document:1018433533,            
		phone:3124327111,                 
		profession:'Profesional',            
		role_id:2,               
		state_id:1,               
		fundation_id:1
	},{
		email:'invitado@gmail.com',                  
		password: '123456',
    	password_confirmation: '123456',        
		name:'Invitado',                   
		lastname:'Ramos',              
		document:1018433533,            
		phone:3124327111,                 
		profession:'Usuario',            
		role_id:3,               
		state_id:1,               
		fundation_id:1
	}
]) 

ChatRoom.create([
	{                   
		title:'Preguntas Frecuentes',                  
		user_id: '1'
	},{
		title:'Nutricionistas',                  
		user_id: '1'
	},{
		title:'Psicologos',                  
		user_id: '1'
	},{
		title:'Terapeutas',                  
		user_id: '1'
	},{
		title:'Amigo',                  
		user_id: '1'
	}
]) 