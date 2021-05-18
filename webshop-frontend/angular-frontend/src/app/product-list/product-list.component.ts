import { ProductService } from './../product.service';
import { Component, OnInit } from '@angular/core';
import {Product} from '../product'

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  products!: Product[];

  constructor(private productService: ProductService) { }

  ngOnInit(): void {
    this.getProducts();
  }

  selectedProduct?: Product;
onSelect(product: Product): void {
  this.selectedProduct = product;
}

private getProducts(){
  this.productService.getProductList().subscribe(data =>{
    this.products=data;
  });
}

}
