.class public final synthetic Lorg/eclipse/jdt/internal/compiler/batch/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/d;->b:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/d;->b:Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->a(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    return-object p1
.end method
