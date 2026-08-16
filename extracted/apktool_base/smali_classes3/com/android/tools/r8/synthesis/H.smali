.class public final Lcom/android/tools/r8/synthesis/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/SyntheticInfoConsumerData;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;

.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/H;->a:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/H;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final getSynthesizingContextClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/H;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    return-object v0
.end method

.method public final getSyntheticClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/H;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    return-object v0
.end method
