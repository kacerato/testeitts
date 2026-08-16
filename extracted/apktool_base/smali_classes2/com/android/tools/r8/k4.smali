.class public final synthetic Lcom/android/tools/r8/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ProgramResource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ProgramResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/k4;->b:Lcom/android/tools/r8/ProgramResource;

    return-void
.end method


# virtual methods
.method public final getProgramResources()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/k4;->b:Lcom/android/tools/r8/ProgramResource;

    invoke-static {v0}, Lcom/android/tools/r8/z;->a(Lcom/android/tools/r8/ProgramResource;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
