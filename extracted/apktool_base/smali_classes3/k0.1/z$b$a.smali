.class public final Lk0/z$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/z$b;->a()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/gson/JsonObject;

.field public final synthetic b:Lk0/o;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;Lk0/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$toolDescription",
            "$openApiTool"
        }
    .end annotation

    iput-object p1, p0, Lk0/z$b$a;->a:Lcom/google/gson/JsonObject;

    iput-object p2, p0, Lk0/z$b$a;->b:Lk0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lk0/z$b$a;->a:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public b(Lcom/google/gson/JsonObject;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lk0/z$b$a;->b:Lk0/o;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lk0/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
