.class public abstract Lcom/android/tools/r8/synthesis/n;
.super Lcom/android/tools/r8/synthesis/t;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/synthesis/t;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final d()Lcom/android/tools/r8/graph/E0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    return-object v0
.end method
