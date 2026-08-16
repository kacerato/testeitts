.class public abstract Lcom/android/tools/r8/internal/F50;
.super Lcom/android/tools/r8/internal/I50;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/C50;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/C50;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/I50;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/F50;->b:Lcom/android/tools/r8/internal/C50;

    return-void
.end method


# virtual methods
.method public final c()Lcom/android/tools/r8/internal/I50;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/F50;->b:Lcom/android/tools/r8/internal/C50;

    return-object v0
.end method
