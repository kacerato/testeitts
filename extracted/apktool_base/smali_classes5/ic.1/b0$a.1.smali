.class public Lic/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
    .locals 1

    new-instance v0, Lic/b0;

    invoke-direct {v0}, Lic/b0;-><init>()V

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;"
        }
    .end annotation

    const-class v0, Lic/b0;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Hash3D"

    return-object v0
.end method

.method public d(Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lic/b0;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Noise"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Hash 3D"

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
