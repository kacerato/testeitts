.class public final synthetic Lcom/android/tools/r8/graph/tf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/q3;


# instance fields
.field public final synthetic a:[Lcom/android/tools/r8/graph/g1;

.field public final synthetic b:[Lcom/android/tools/r8/graph/g1;


# direct methods
.method public synthetic constructor <init>([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/tf;->a:[Lcom/android/tools/r8/graph/g1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/tf;->b:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/r3;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/tf;->a:[Lcom/android/tools/r8/graph/g1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/tf;->b:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/q3;->a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/r3;

    move-result-object p1

    return-object p1
.end method
