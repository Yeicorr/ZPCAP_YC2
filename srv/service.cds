using {com.logali as logali} from '../db/schema';

service ServiceCatalog {

    entity Orden as projection on logali.zorden_yc;
    entity Items as projection on logali.zitems_yc;

}
