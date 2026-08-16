.class public final Lcom/android/tools/r8/internal/S3;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/function/Function;

.field public h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I50;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/S3;->g:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Q2;
    .locals 6

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/internal/S3;->h:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    new-instance p3, Lcom/android/tools/r8/internal/R3;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/R3;-><init>(Lcom/android/tools/r8/internal/S3;Lcom/android/tools/r8/internal/I50;Lcom/android/tools/r8/internal/I50;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-object p3
.end method
