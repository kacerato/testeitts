.class public final Lz3/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "methodName"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lz3/e$c;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lz3/e$c;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lz3/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz3/e$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lz3/e$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz3/e$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lz3/e$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz3/e$c;->b:Ljava/lang/String;

    return-object p0
.end method
