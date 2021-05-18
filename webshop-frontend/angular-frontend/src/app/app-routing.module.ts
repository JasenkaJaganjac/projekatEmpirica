import { ContactComponent } from './contact/contact.component';
import { StartComponent } from './start/start.component';

import { ProductListComponent } from './product-list/product-list.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {path: 'products', component:ProductListComponent},
  {path: 'start', component:StartComponent},
  {path: 'contact', component:ContactComponent},
  {path: '', redirectTo:'start',pathMatch:'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
