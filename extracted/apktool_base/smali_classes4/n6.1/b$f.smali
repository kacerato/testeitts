.class public final Ln6/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processorName",
            "logicalProcessors",
            "onlineProcessors",
            "physicalCores",
            "socketCount",
            "cacheSummary",
            "abis",
            "hardware",
            "features",
            "bogoMips",
            "board",
            "device",
            "buildHardware"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln6/b$f;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Ln6/b$f;->b:I

    .line 5
    iput p3, p0, Ln6/b$f;->c:I

    .line 6
    iput p4, p0, Ln6/b$f;->d:I

    .line 7
    iput p5, p0, Ln6/b$f;->e:I

    .line 8
    iput-object p6, p0, Ln6/b$f;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Ln6/b$f;->g:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Ln6/b$f;->h:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Ln6/b$f;->i:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Ln6/b$f;->j:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Ln6/b$f;->k:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Ln6/b$f;->l:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Ln6/b$f;->m:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln6/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Ln6/b$f;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
