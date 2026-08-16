.class public final Lcom/android/tools/r8/synthesis/p;
.super Lcom/android/tools/r8/synthesis/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/synthesis/m;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)V

    sget-object p1, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/m;->h:Lcom/android/tools/r8/ProgramResource$Kind;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/V;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V;->d:Lcom/android/tools/r8/graph/V;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/synthesis/m;
    .locals 0

    return-object p0
.end method
