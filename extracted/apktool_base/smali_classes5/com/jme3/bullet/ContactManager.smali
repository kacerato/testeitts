.class public interface abstract Lcom/jme3/bullet/ContactManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/collision/ContactListener;


# virtual methods
.method public abstract addCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
.end method

.method public abstract addContactListener(Lcom/jme3/bullet/collision/ContactListener;I)V
.end method

.method public abstract addOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
.end method

.method public abstract countCollisionListeners()I
.end method

.method public abstract distributeEvents()V
.end method

.method public abstract removeCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
.end method

.method public abstract removeContactListener(Lcom/jme3/bullet/collision/ContactListener;)V
.end method

.method public abstract removeOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
.end method

.method public abstract update(FII)V
.end method
