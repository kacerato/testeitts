.class public Lwh/w;
.super Loh/s;
.source "SourceFile"


# static fields
.field public static final g:Lwh/w;

.field public static final h:Lwh/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwh/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwh/w;-><init>(I)V

    sput-object v0, Lwh/w;->g:Lwh/w;

    new-instance v0, Lwh/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lwh/w;-><init>(I)V

    sput-object v0, Lwh/w;->h:Lwh/w;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Loh/s;-><init>(J)V

    return-void
.end method

.method public static T(I)Lwh/w;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lwh/w;->g:Lwh/w;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lwh/w;->h:Lwh/w;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
