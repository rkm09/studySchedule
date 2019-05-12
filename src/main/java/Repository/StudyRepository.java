package Repository;

import model.Study;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StudyRepository extends JpaRepository<Study, Integer> {
//    Study findById(int id);
//    List<Study> findByName(String name);
    List<Study> findAll();
}
