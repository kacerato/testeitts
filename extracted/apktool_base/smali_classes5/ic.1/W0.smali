.class public Lic/W0;
.super Lic/f1;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "Reflect"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/W0$a;

    invoke-direct {v0}, Lic/W0$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "reflect"

    const-string v1, "Reflect"

    invoke-direct {p0, v1, v0}, Lic/f1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method
