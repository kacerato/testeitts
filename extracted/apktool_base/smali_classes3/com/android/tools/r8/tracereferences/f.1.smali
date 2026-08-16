.class public final Lcom/android/tools/r8/tracereferences/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResourceProvider;


# instance fields
.field public final a:Lcom/android/tools/r8/ProgramResource;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ProgramResource;->fromFile(Lcom/android/tools/r8/ProgramResource$Kind;Ljava/nio/file/Path;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/f;->a:Lcom/android/tools/r8/ProgramResource;

    return-void
.end method


# virtual methods
.method public final getProgramResources()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/f;->a:Lcom/android/tools/r8/ProgramResource;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
