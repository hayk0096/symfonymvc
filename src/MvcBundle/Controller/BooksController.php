<?php

namespace MvcBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class BooksController extends Controller
{
    /**
     * @Route("/bookslist")
     */
    public function listAction()
    {
        return $this->render('MvcBundle:Books:list_books.html.twig', array(
            // ...
        ));
    }

    /**
     * @Route("/addBook")
     */
    public function addBookAction()
    {
        return $this->render('MvcBundle:Books:add_book.html.twig', array(
            // ...
        ));
    }

    /**
     * @Route("/deleteBook")
     */
    public function deleteBookAction()
    {
        // ...
    }

    /**
     * @Route("/showOneBook")
     */
    public function showOneBookAction()
    {
        return $this->render('MvcBundle:Books:show_book.html.twig.twig', array(
            // ...
        ));
    }

    /**
     * @Route("/evaluate")
     */
    public function evaluateAction()
    {
            // ...
    }

}
