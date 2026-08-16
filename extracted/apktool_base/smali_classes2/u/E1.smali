.class public final synthetic Lu/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/E1;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lu/E1;->b:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/dex/p0;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)I

    move-result p1

    return p1
.end method
