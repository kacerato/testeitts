.class public final synthetic Lu/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/w5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/w5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/I;->b:Lcom/android/tools/r8/graph/w5;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lu/I;->b:Lcom/android/tools/r8/graph/w5;

    check-cast p1, Lcom/android/tools/r8/graph/t0;

    check-cast p2, Lcom/android/tools/r8/graph/t0;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/t0;Lcom/android/tools/r8/graph/t0;)I

    move-result p1

    return p1
.end method
