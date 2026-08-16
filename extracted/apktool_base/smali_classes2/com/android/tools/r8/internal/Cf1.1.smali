.class public final synthetic Lcom/android/tools/r8/internal/Cf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/IA;

.field public final synthetic b:Lcom/android/tools/r8/internal/IA$a;

.field public final synthetic c:Lcom/android/tools/r8/internal/IA$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cf1;->a:Lcom/android/tools/r8/internal/IA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cf1;->b:Lcom/android/tools/r8/internal/IA$a;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Cf1;->c:Lcom/android/tools/r8/internal/IA$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cf1;->a:Lcom/android/tools/r8/internal/IA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cf1;->b:Lcom/android/tools/r8/internal/IA$a;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Cf1;->c:Lcom/android/tools/r8/internal/IA$a;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/jY;->a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
