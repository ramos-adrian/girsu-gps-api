package ar.ramos.girsugps.internal.truck;

import jakarta.persistence.*;
import lombok.*;

@AllArgsConstructor @NoArgsConstructor
@Getter @Setter
@Entity
public class Truck {
    @Id
    private Long id;

    @Column(nullable = false, unique = true)
    private String plate;

    /**
     * The route that the truck is currently following. Formated in GeoHash.
     */
    String route;
}
