# Konecta-Terraform
Konecta-Terraform tasks

1. *Create Arch1* using Terraform and ensure all variables are managed using a **.tfvars** file.
   
Related files can be found in the repo.
![tf1](https://github.com/user-attachments/assets/f74df378-4f71-4f6e-8764-48af6082e19a)
![tf2](https://github.com/user-attachments/assets/43475c71-5d3c-4228-a24f-458b81c109ee)
![tf3](https://github.com/user-attachments/assets/0ee8d74e-d17c-4f27-9b06-14760981285c)

2. *Research Terraform modules* and explore how they can be used for better reusability and maintainability.
   
Terraform Modules:
Definition: A Terraform module is a container for multiple Terraform resources that are used together.
Purpose: Modules allow you to organize your infrastructure code, enabling you to reuse and share configurations.
Analogy: Think of modules like “functions” in a programming language—rather than duplicating code, you define it once and call it multiple times with different inputs.
Why it matters:
Reusability: You can reuse the same module in different projects (e.g., a module that sets up a VPC).
Maintainability: Fix or update your module in one place, and you instantly improve all deployments that rely on it.

3. *Using a module, create **Arch2* and install *Nginx* on the machine using Terraform.
   
Related files can be found in the repo.
![tf4](https://github.com/user-attachments/assets/46720aa6-2a7b-4998-b9a2-8bd60a3b5150)
![tf5](https://github.com/user-attachments/assets/3c544700-de62-48c3-bb6e-bd9d01078ec1)
![tf6](https://github.com/user-attachments/assets/30dec532-1123-4f6b-a900-f994e5576fbe)

4. *Collaborate with your teammate: Since your teammate will contribute to **Arch2, find the proper way to **share the state file* and implement it.
   
Related files can be found in the repo.
We will store the state file in an AWS S3 bucket (with DynamoDB for state locking). 
Why We Need a Shared State:
Terraform State keeps track of the real-world resources Terraform manages.
If multiple people run Terraform separately with local state files, you risk state drift or overwriting each other’s changes.
A remote, shared state ensures that everyone on the team always works off the same reference of infrastructure.

The DynamoDB table is used to lock the state file, preventing multiple users (or processes) from modifying the infrastructure at the same time. This is known as state locking.
![tf7](https://github.com/user-attachments/assets/5ed7647c-7648-4619-b56a-7ae53257aedc)
![tf8](https://github.com/user-attachments/assets/38deb1a3-387f-4c34-8c80-500b1704ef87)





