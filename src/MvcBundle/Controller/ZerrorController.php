<?php

namespace MvcBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;


class ZerrorController extends Controller
{

    /**
     * @Route("/{errorName}" )
     */
    public function errorAction($errorName)
    {
        return $this->render('MvcBundle::error.html.twig', [ 'error' => $errorName, ] );
    }

    /**
     * @Route("/{errorName}/{errsec}")
     */
    public function errsecondAction($errorName,$errsec)
    {
        return $this->render("MvcBundle::errorsec.html.twig", [ 'error' =>  $errorName, 'errsec' => $errsec]);
    }
}