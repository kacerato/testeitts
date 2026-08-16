.class public final Lcom/android/tools/r8/internal/ub0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ProgramResource;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/ProgramResource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ub0;->a:Lcom/android/tools/r8/ProgramResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgramResources()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ub0;->a:Lcom/android/tools/r8/ProgramResource;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "singletonList(...)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
