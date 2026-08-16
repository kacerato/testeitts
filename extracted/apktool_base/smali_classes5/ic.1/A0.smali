.class public Lic/A0;
.super Lic/i1;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "NaturalLog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/A0$a;

    invoke-direct {v0}, Lic/A0$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Natural Log"

    const-string v1, "log"

    invoke-direct {p0, v0, v1}, Lic/i1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NaturalLog"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method
