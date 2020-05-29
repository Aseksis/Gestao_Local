<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class NotificarNovoUsuario extends Notification
{
    use Queueable;

  	
   	public $username;
  	public $password;
  
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($username,$password)
    {
         $this->username = $username;
       	 $this->password = $password;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {   
        return (new MailMessage)
                ->greeting('Olá! '.$this->username.',')
                    ->subject('Seja bem-vindo a Gestão Familiar AD')
                    ->line('É com grande alegria que te damos as boas vindas, qualquer dúvida nossa equipe está sempre a disposição! ')
					->line('Senha de Acesso:'.$this->password);
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}



