.class public final synthetic Lcom/jme3/shader/bufferobject/layout/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/layout/a;->b:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;->a(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
