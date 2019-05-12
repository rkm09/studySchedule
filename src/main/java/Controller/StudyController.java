package Controller;

import Repository.StudyRepository;
import model.Study;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/study")
public class StudyController {

    @Autowired
    private StudyRepository repository;

    @RequestMapping(value="/",method = RequestMethod.GET)
    public List getAllStudy(){
        return repository.findAll();
    }

//    @RequestMapping(value="/{id}",method = RequestMethod.GET)
//    public Study getStudyById(@PathVariable("id") ) {
//        return repository.findById()
//    }
}
