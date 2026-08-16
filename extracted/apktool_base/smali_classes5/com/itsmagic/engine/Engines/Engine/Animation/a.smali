.class public Lcom/itsmagic/engine/Engines/Engine/Animation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LAc/b;

.field public static final b:Ljava/lang/String; = "p"

.field public static final c:Ljava/lang/String; = "r"

.field public static final d:Ljava/lang/String; = "s"

.field public static final e:LAc/b;

.field public static final f:Ljava/lang/String; = "e"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LAc/b;

    const-string v1, "t"

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    new-instance v0, LAc/b;

    const-string v1, "e"

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->e:LAc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
