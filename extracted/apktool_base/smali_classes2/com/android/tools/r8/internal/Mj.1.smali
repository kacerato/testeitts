.class public final Lcom/android/tools/r8/internal/Mj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nl0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/By;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/tools/r8/internal/By;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mj;->a:Ljava/lang/String;

    iput p2, p0, Lcom/android/tools/r8/internal/Mj;->b:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/Mj;->c:Lcom/android/tools/r8/internal/By;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Lj;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Lj;-><init>(Lcom/android/tools/r8/internal/Mj;)V

    return-object v0
.end method
