.class public final Lcom/android/tools/r8/internal/oC;
.super Lcom/android/tools/r8/internal/pC;
.source "SourceFile"


# instance fields
.field public final transient e:Lcom/android/tools/r8/internal/qC;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/qC;Lcom/android/tools/r8/internal/qC;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/pC;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/qC;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/oC;->e:Lcom/android/tools/r8/internal/qC;

    return-void
.end method


# virtual methods
.method public final c()Lcom/android/tools/r8/internal/qC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oC;->e:Lcom/android/tools/r8/internal/qC;

    return-object v0
.end method
