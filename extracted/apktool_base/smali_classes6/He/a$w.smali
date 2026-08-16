.class public final enum LHe/a$w;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LHe/a$w;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LHe/a$w;

.field public static final enum INSTANCE:LHe/a$w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHe/a$w;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LHe/a$w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHe/a$w;->INSTANCE:LHe/a$w;

    filled-new-array {v0}, [LHe/a$w;

    move-result-object v0

    sput-object v0, LHe/a$w;->$VALUES:[LHe/a$w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LHe/a$w;
    .locals 1

    const-class v0, LHe/a$w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHe/a$w;

    return-object p0
.end method

.method public static values()[LHe/a$w;
    .locals 1

    sget-object v0, LHe/a$w;->$VALUES:[LHe/a$w;

    invoke-virtual {v0}, [LHe/a$w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHe/a$w;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, LHe/a$w;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
