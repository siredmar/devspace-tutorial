---
marp: true
theme: base-theme
style: |
  section {
    background-color: #ccc;
  }
---
<style>
img[alt~="center"] {
  display: block;
  margin: 0 auto;
}
img[alt~="rounded"] {
  border-radius: 5%;
}
</style>

# K8s in-cluster debugging using devspace

What to expect?

- learn about devspace
- learn how devspace can help debugging
- live demo
![w:400 center rounded](gfx/bullshit.jpg)

---

# To clearify some terms

* What does the term "in-cluster debugging" mean?
* What is devspace?

---

## What does the term "in-cluster debugging" mean? 

In-cluster debugging refers to diagnosing and fixing issues within a Kubernetes cluster while the application is running in the development environment.

![w:100 rounded](gfx/k8sinside.jpg)

---

## What is devspace?

DevSpace is a client-only, open-source developer tool for Kubernetes:

- Build, test and debug applications directly inside Kubernetes
- Develop with hot reloading: updates your running containers without rebuilding images or restarting containers
- Unify deployment workflows within your team and across dev, staging and production
- Automate repetitive tasks for image building and deployment

Find it at [devspace.sh](https://devspace.sh/)

---

# How can devspace help in general?

![](gfx/overview-stage1.png)

---

# How can devspace help debugging?

![](gfx/overview-stage2.png)

---

# Live demo

- Spin up a local dev cluster
- Build and deploy the application
- Access the application
- Debug the application

![w:400 center rounded](gfx/yoda.jpg)