.class public final Lcom/android/tools/r8/internal/Dl;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/tools/r8/internal/Pl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Pl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Dl;->d:Lcom/android/tools/r8/internal/Pl;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dl;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dl;->d:Lcom/android/tools/r8/internal/Pl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dl;->d:Lcom/android/tools/r8/internal/Pl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    return-object v0
.end method
