import { SkillService } from './../../service/skill.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Route, Router } from '@angular/router';
import { Skill } from 'src/app/model/skill';


@Component({
  selector: 'app-edit-skill',
  templateUrl: './edit-skill.component.html',
  styleUrls: ['./edit-skill.component.css']
})
export class EditSkillComponent implements OnInit {

  skill:Skill = null;


  constructor(
    private skillS:SkillService,
    private activatedRouter: ActivatedRoute,
    private router: Router
  ){}

  ngOnInit():void{ 
    const id = this.activatedRouter.snapshot.params['id'];
    this.skill
    this.skillS.detail(id).subscribe(
        data =>{
        this.skill = data;
      }, err =>{
        alert("Error al modificar");
        this.router.navigate(['']);
      }
    )
  }

  onUpdate(){
    const id = this.activatedRouter.snapshot.params['id'];
    this.skillS.update(id, this.skill).subscribe(
      data =>{
        this.router.navigate(['']);
      }, err =>{
        alert("Error al modificar");
        this.router.navigate([''])
      }
    )
  }
}
