package com.ecobonus.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecobonus.entity.InizioLavori;


@Repository
public class InizioLavoriDAOImpl implements InizioLavoriDAO {
	@Autowired 
	private SessionFactory sessionFactory;
	public List<InizioLavori> getList() {
		Session currentSession = sessionFactory.getCurrentSession();
			Query<InizioLavori> theQuery = 
					currentSession.createQuery("from InizioLavori order by idiInizioLavori", InizioLavori.class);
					List<InizioLavori> inizioLavori = theQuery.getResultList();	
				return inizioLavori;
	}
	
	@Override
	public void saveInizioLavori(InizioLavori inizioLavori) {
			Session currentSession = sessionFactory.getCurrentSession();
				currentSession.saveOrUpdate(inizioLavori);
	}
	
	@Override
	public InizioLavori getInizioLavori(int idInizioLavori) {
			Session currentSession = sessionFactory.getCurrentSession();
				InizioLavori inizioLavori = currentSession.get(InizioLavori.class, idInizioLavori);
					return inizioLavori;
	}
	@Override
	public void deleteInizioLavori(int inizioLavori) {
	
		Session currentSession = sessionFactory.getCurrentSession();
			Query theQuery = 
					currentSession.createQuery("delete from Intervento where idIntervento=:idIntervento");
					theQuery.setParameter("idIntervento", inizioLavori);
					theQuery.executeUpdate();		
	} 

}
