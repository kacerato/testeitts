.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field public final synthetic c:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field public final synthetic d:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/i;->b:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/i;->c:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/i;->d:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/i;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/i;->b:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/i;->c:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/i;->d:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/i;->e:Z

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Z)V

    return-void
.end method
