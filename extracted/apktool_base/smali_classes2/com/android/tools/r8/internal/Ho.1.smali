.class public final Lcom/android/tools/r8/internal/Ho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ng0;

.field public final synthetic c:Lcom/android/tools/r8/internal/Io;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ng0;Lcom/android/tools/r8/internal/Io;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ho;->b:Lcom/android/tools/r8/internal/ng0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ho;->c:Lcom/android/tools/r8/internal/Io;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ho;->b:Lcom/android/tools/r8/internal/ng0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ho;->c:Lcom/android/tools/r8/internal/Io;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Io;->a:Ljava/nio/file/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " reachable: referenced from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ho;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
