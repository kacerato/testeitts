.class public Lcom/android/tools/r8/retrace/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/android/tools/r8/StringConsumer;

.field public b:Lcom/android/tools/r8/internal/M50;

.field public c:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/c$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/retrace/c$a;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/retrace/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/retrace/c$a;->a:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/internal/M50;)Lcom/android/tools/r8/retrace/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/M50<",
            "*>;)",
            "Lcom/android/tools/r8/retrace/c$a;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/retrace/c$a;->b:Lcom/android/tools/r8/internal/M50;

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/retrace/c;
    .locals 4

    .line 4
    new-instance v0, Lcom/android/tools/r8/retrace/c;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/c$a;->a:Lcom/android/tools/r8/StringConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/c$a;->b:Lcom/android/tools/r8/internal/M50;

    iget-object v3, p0, Lcom/android/tools/r8/retrace/c$a;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/retrace/c;-><init>(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/M50;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object v0
.end method
