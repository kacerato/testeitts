.class public final Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;,
        Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;

.field public static final DELETION_MODE_ALL:I = 0x0

.field public static final DELETION_MODE_EXCLUDE_INTERNAL_DATA:I = 0x1

.field public static final MATCH_BEHAVIOR_DELETE:I = 0x0

.field public static final MATCH_BEHAVIOR_PRESERVE:I = 0x1


# instance fields
.field private final deletionMode:I

.field private final domainUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final end:Ljava/time/Instant;

.field private final matchBehavior:I

.field private final originUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final start:Ljava/time/Instant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->Companion:Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/time/Instant;Ljava/time/Instant;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainUris"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originUris"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    .line 3
    iput p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    .line 4
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Ljava/time/Instant;

    .line 5
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Ljava/time/Instant;

    .line 6
    iput-object p5, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    .line 7
    iput-object p6, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/time/Instant;Ljava/time/Instant;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/x;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 8
    sget-object p3, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    const-string p8, "MIN"

    invoke-static {p3, p8}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 9
    sget-object p4, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    const-string p3, "MAX"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    .line 10
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p5

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    .line 11
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p6

    :cond_3
    move-object v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;-><init>(IILjava/time/Instant;Ljava/time/Instant;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/measurement/DeletionRequest;
    .locals 2

    invoke-static {}, Landroidx/privacysandbox/ads/adservices/measurement/h;->a()Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/a;->a(Landroid/adservices/measurement/DeletionRequest$Builder;I)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/b;->a(Landroid/adservices/measurement/DeletionRequest$Builder;I)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Ljava/time/Instant;

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/c;->a(Landroid/adservices/measurement/DeletionRequest$Builder;Ljava/time/Instant;)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Ljava/time/Instant;

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/d;->a(Landroid/adservices/measurement/DeletionRequest$Builder;Ljava/time/Instant;)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/e;->a(Landroid/adservices/measurement/DeletionRequest$Builder;Ljava/util/List;)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/f;->a(Landroid/adservices/measurement/DeletionRequest$Builder;Ljava/util/List;)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/measurement/g;->a(Landroid/adservices/measurement/DeletionRequest$Builder;)Landroid/adservices/measurement/DeletionRequest;

    move-result-object v0

    const-string v1, "Builder()\n            .s\u2026ris)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    check-cast p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;

    iget v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    if-ne v1, v3, :cond_2

    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Ljava/time/Instant;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Ljava/time/Instant;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    iget p1, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getDeletionMode()I
    .locals 1

    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    return v0
.end method

.method public final getDomainUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    return-object v0
.end method

.method public final getEnd()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Ljava/time/Instant;

    return-object v0
.end method

.method public final getMatchBehavior()I
    .locals 1

    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    return v0
.end method

.method public final getOriginUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    return-object v0
.end method

.method public final getStart()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Ljava/time/Instant;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    if-nez v0, :cond_0

    const-string v0, "DELETION_MODE_ALL"

    goto :goto_0

    :cond_0
    const-string v0, "DELETION_MODE_EXCLUDE_INTERNAL_DATA"

    :goto_0
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    if-nez v1, :cond_1

    const-string v1, "MATCH_BEHAVIOR_DELETE"

    goto :goto_1

    :cond_1
    const-string v1, "MATCH_BEHAVIOR_PRESERVE"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeletionRequest { DeletionMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", MatchBehavior="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Start="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Ljava/time/Instant;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", End="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Ljava/time/Instant;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", DomainUris="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", OriginUris="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
