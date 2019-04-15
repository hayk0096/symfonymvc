<?php

namespace MvcBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Tests\File\UploadedFileTest;

class UploadController extends Controller
{

    public function uploadAction(Request $request){
        if ($request->getMethod() == 'POST'){
            $image = $request->files->get('choose_image');
            $status = 'success';
            if (($image instanceof UploadedFileTets)&&($file->getError() == '0')){
                if (!($image->getSize()<200000)){

                }else{
                    $status = 'failed';
                    $message = 'Size exceeds limit';
                }
            }else{
                $status = 'failed';
                $message = 'file Error';
            }
        }else{
            return $this->render('MvcBundle:Default:index.html.twig');
        }
    }
}