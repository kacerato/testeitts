.class public final synthetic Lorg/eclipse/jdt/internal/core/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/eclipse/core/resources/IWorkspaceRoot;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/core/resources/IWorkspaceRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/e;->b:Lorg/eclipse/core/resources/IWorkspaceRoot;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/e;->b:Lorg/eclipse/core/resources/IWorkspaceRoot;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/DynamicProjectReferences;->a(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    return-object p1
.end method
