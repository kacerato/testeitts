.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$j;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$h;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$e;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$c;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$b;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$d;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;
    }
.end annotation


# static fields
.field public static a:Z = true

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
