.class public final synthetic Lcom/android/tools/r8/internal/Li1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/TreeMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Li1;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Li1;->a:Ljava/util/TreeMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/TreeMap;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
