package glavny.inf.elte.hu.rest;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import glavny.inf.elte.hu.data.AuditLog;
import glavny.inf.elte.hu.data.AuditLogRepository;

@RestController
@RequestMapping("auditlog")
@Transactional
public class AuditLogManager {
	
	@Autowired
    private AuditLogRepository auditLogRepository;

    @GetMapping("/")
    public  ResponseEntity<List<AuditLog>> getLogs(Authentication auth)
    {
        List<AuditLog> result = auditLogRepository.findAll();
        return new ResponseEntity<List<AuditLog>>(result, HttpStatus.OK);
    }

    @GetMapping("/find/{str}")
    public  ResponseEntity<List<AuditLog>> searchLogs(@PathVariable("str") String str, Authentication auth)
    {
        List<AuditLog> result = auditLogRepository.searchByString(str);
        return new ResponseEntity<List<AuditLog>>(result, HttpStatus.OK);
    }
}
