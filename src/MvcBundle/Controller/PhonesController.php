<?php

namespace MvcBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class PhonesController extends Controller
{
    /**
     * @Route("/listPhones")
     */
    public function getPhonesListAction()
    {
        $repository = $this->getDoctrine()->getManager()->getConnection();
        $query = $repository->prepare("SELECT * FROM phones ");
        $query->execute();
        $result = $query->fetchAll();


        return $this->render('MvcBundle:Phones:list_phones.html.twig', [ 'phones' => $result ]);
    }

    /**
     * @Route("/addPhone")
     */
    public function addPhoneAction()
    {
        return $this->render('MvcBundle:Phones:add_phone.html.twig', array(
            // ...
        ));
    }

    /**
     * @Route("/showOnePhone/{id}")
     */
    public function showOnePhoneAction($id)
    {
        $repository = $this->getDoctrine()->getManager()->getConnection();
        $query = $repository->prepare("SELECT * FROM phones WHERE id = $id");
        $query->execute();
        $result = $query;

        return $this->render('MvcBundle:Phones:show_one_phone.html.twig', [ 'phones' => $result ] );
    }

    /**
     * @Route("/deletePhone")
     */
    public function deletePhoneAction()
    {
        // ...
    }

}
