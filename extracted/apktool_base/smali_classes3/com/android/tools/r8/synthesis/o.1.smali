.class public abstract Lcom/android/tools/r8/synthesis/o;
.super Lcom/android/tools/r8/synthesis/a0;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/synthesis/a0;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/J2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final getHolder()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
