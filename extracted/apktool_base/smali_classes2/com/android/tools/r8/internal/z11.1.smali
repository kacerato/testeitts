.class public final synthetic Lcom/android/tools/r8/internal/z11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/z11;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/z11;->b:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/internal/YS;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Wu0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/YS;)Z

    move-result p1

    return p1
.end method
