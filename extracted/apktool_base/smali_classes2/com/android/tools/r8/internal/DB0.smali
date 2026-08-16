.class public final synthetic Lcom/android/tools/r8/internal/DB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/MM;

    check-cast p2, Lcom/android/tools/r8/internal/ZM;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/CN;->a(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/ZM;)Lcom/android/tools/r8/internal/ZM;

    move-result-object p1

    return-object p1
.end method
